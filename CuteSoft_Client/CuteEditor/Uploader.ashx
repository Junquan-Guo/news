<%@ WebHandler Language="C#" Class="CuteEditor_AjaxUploader" %>

using System;
using System.Web;
using CuteEditor;

public class CuteEditor_AjaxUploader : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
		if (CuteEditor.UploadModule.HandleResource(context))
			return;
		if (CuteEditor.UploadModule.HandleAddonUpload(context))
			return;
		
		context.Response.Write("Unknown Request Type");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}