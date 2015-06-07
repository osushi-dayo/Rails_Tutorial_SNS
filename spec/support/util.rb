### suportの中にファイルを作ってそこにメソッドを定義すると、それは全部specの中テストで使える

def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample Coedo"
    if page_title.empty?
        base_title
    else
        "#{base_title} | #{page_title}"
    end
end
