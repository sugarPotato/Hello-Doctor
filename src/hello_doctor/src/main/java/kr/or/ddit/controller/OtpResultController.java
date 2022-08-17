package kr.or.ddit.controller;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base32;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.dto.DoctorVO;
import kr.or.ddit.service.DoctorService;


@Controller
@RequestMapping("otpcheck")
public class OtpResultController{

	@RequestMapping(value="/",method= RequestMethod.POST)
    protected String service(HttpServletRequest req, HttpServletResponse res,HttpSession session,RedirectAttributes rttr)
            throws ServletException, IOException,Exception {

		String url ="redirect:index.do";

        String user_codeStr = req.getParameter("user_code");
        long user_code = Integer.parseInt(user_codeStr);
        String encodedKey = req.getParameter("encodedKey");

        System.out.println("encodeKey!#~#"+encodedKey);

        long l = new Date().getTime()/30000;

        System.out.println("2차 session"+session);

        boolean check_code = false;
        try {
            // 키, 코드, 시간으로 일회용 비밀번호가 맞는지 일치 여부 확인.
            check_code = check_code(encodedKey, user_code, l);
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }


        if(check_code) {
        	url="redirect:/index.do";
        }else {
        	rttr.addFlashAttribute("loginfail","login");
        	url="redirect:/login/loginForm";
        }

        // 일치한다면 true.
        System.out.println("check_code : " + check_code);

        return url;

    }

    private static boolean check_code(String secret, long code, long t) throws NoSuchAlgorithmException, InvalidKeyException {
        Base32 codec = new Base32();
        byte[] decodedKey = codec.decode(secret);

        // Window is used to check codes generated in the near past.
        // You can use this value to tune how far you're willing to go.
        int window = 3;
        for (int i = -window; i <= window; ++i) {
            long hash = verify_code(decodedKey, t + i);

            if (hash == code) {
                return true;
            }
        }

        // The validation code is invalid.


        return false;
    }

    private static int verify_code(byte[] key, long t)
            throws NoSuchAlgorithmException, InvalidKeyException {
        byte[] data = new byte[8];
        long value = t;
        for (int i = 8; i-- > 0; value >>>= 8) {
            data[i] = (byte) value;
        }

        SecretKeySpec signKey = new SecretKeySpec(key, "HmacSHA1");
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(signKey);
        byte[] hash = mac.doFinal(data);

        int offset = hash[20 - 1] & 0xF;

        // We're using a long because Java hasn't got unsigned int.
        long truncatedHash = 0;
        for (int i = 0; i < 4; ++i) {
            truncatedHash <<= 8;
            // We are dealing with signed bytes:
            // we just keep the first byte.
            truncatedHash |= (hash[offset + i] & 0xFF);
        }

        truncatedHash &= 0x7FFFFFFF;
        truncatedHash %= 1000000;

        return (int) truncatedHash;
    }


}
