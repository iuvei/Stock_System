<%@ page contentType="text/html;charset=gbk"
import="com.jspsmart.upload.*,com.firstgroup.utils.*" %><%
// �½�һ��SmartUpload����
SmartUpload su = new SmartUpload();
// ��ʼ��
su.initialize(pageContext);
// �趨contentDispositionΪnull�Խ�ֹ������Զ����ļ���
//��֤������Ӻ��������ļ��������趨�������ص��ļ���չ��Ϊ
//docʱ����������Զ���word��������չ��Ϊpdfʱ��
//���������acrobat�򿪡�
su.setContentDisposition(null);
// �����ļ�

     String a =ChangeEncoding.changeEncode((String)request.getParameter("path"));   
               
su.downloadFile(a);

%>