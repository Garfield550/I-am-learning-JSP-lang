package com.graysoft.sdcit;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/**
 * Created by garfi on 3/7/2017.
 */
public class Base {
    /**
     * getBasePath method create a html base URL.
     * @param request is JSP page request.
     * @return a string base URL, e.g., http://localhost:80
     */
    public String getBasePath(HttpServletRequest request) {
         String _contextPath = request.getContextPath();
         String _scheme = request.getScheme();
         String _serverName = request.getServerName();
         int _serverPort = request.getServerPort();
         return _scheme + "://" + _serverName + ":" + _serverPort + _contextPath + "/";
    }
    /**
     *
     * @param request is JSP page request.
     * @param parameter a JSP parameter. e.g., "username".
     * @param inBytes a in bytes charset name.
     * @param outBytes a out bytes charset name.
     * @return a format string, charset is "outByte".
     * @throws UnsupportedEncodingException is Exception.
     */
    public String formatParamBytes(HttpServletRequest request, String parameter, String inBytes, String outBytes)
            throws UnsupportedEncodingException {
        String _tempParameter = request.getParameter(parameter);
        return new String(_tempParameter.getBytes(Charset.forName(inBytes)), Charset.forName(outBytes));
    }
}
