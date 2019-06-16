RSpec.describe "JSON schema バリデーション" do 
  let(:data){JSON::Validator.validate(Schema,info)}
  
  describe "成功するデータの検証" do 
    context "My_informationsのバリデーション" do 
      let(:info){My_informations}
      it "バリデーション成功" do 
        expect(data).to be_truthy
      end 
    end 
  end
  
  describe "失敗するデータの検証" do 
    subject{data}
  
    context "空の検証" do
      let(:info){{}}
      it {is_expected.to be_falsey}
    end 
    
    context "必須項目と違う名前のプロパティ" do
      let(:info){ {"false_value": "hi"} }
      it {is_expected.to be_falsey}
    end 
    
    context "データ型(タイプ)が違う" do 
      let(:info){
        {
          "github": "string",
          "twitter": "string",
          "answer": "string",
          "homepage": 1
        }
      }
      it {is_expected.to be_falsey}
    end 
    
  end 
  
end 