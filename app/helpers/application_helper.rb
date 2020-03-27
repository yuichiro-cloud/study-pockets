module ApplicationHelper
  require "uri" #extractを使えるようにするための記述

  def text_url_to_link(text)
    URI.extract(text, ['http', 'https']).uniq.each do |url| #http,httpsに該当するものをsub_textに配列として重複無しで保存
      sub_text = "" #urlをリンク変換後のテキスト
      # sub_text << "<a href=" << url << " target=\"_blank\">" << url << "</a>" #おそらく下記と同義。target="_blankで新規タブでリンク先を開いている"
      sub_text << "<a href=" + url + " target=\"_blank\">" + url + "</a>" #この記述でsub_textにaタグの中身を連結させたものを入れてる
  
      text.gsub!(url, sub_text)
    end
  
    return text
  end
end
