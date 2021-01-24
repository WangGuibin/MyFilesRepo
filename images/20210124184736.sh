
filePath="hhh.png"
fileName=`date +%Y%m%d%H%M%S`.${filePath##*.}
CommitMsg="Mac通过Shell脚本上传了一张图片"$fileName
Target_Img_URL="https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/images/"$fileName

Base64_Content=$(base64 -b 0 $filePath)  
echo $Base64_Content >> ./base64.txt
API_URL="https://api.github.com/repos/WangGuibin/MyFilesRepo/contents/images/"${fileName}
echo $API_URL

Acess_Token="token 3550b08ae13a9afdc0dfdb0554a75cecb46070b0"

result=$(curl \
  -X PUT \
  -H "Content-Type:application/json"\
  -H "Authorization:$Acess_Token" \
  -H "Accept:application/vnd.github.raw"\
  ${API_URL} \
  -d "{\"message\":\"${CommitMsg}\",\"content\":\"${Base64_Content}\"}")

IsUpload=`echo $result | grep "committer"`
if [[ -n "$IsUpload" ]]; then
	echo $Target_Img_URL | pbcopy
	osascript -e "display notification \"$Target_Img_URL\" with title \"通知\" subtitle \"图片上传成功,图片地址已拷贝至剪贴板\""
fi

