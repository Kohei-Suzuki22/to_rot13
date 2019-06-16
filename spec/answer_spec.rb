RSpec.describe "Answer" do
  let(:answer){Answer.new(input)}
  
  describe "入力の検証" do
    
    describe "入力エラー" do 
      context "空の文字列を入力する" do
        let(:input){" "}
        it "エラー" do
          expect{answer}.to raise_error InvalidTextError
        end
      end 
      context "ASCIIで印字不可能の文字が入ってる" do 
        let(:input){"あいうえお"}
        it "エラー" do 
          expect{answer}.to raise_error NotFoundAsciiError
        end 
      end 
    end
    
    describe "正常な入力" do 
      context "空でない文字列かつ印字可能なASCII" do
        let(:input){"abc"}
        it "エラーが起きない" do 
          expect{answer}.not_to raise_error
        end 
      end 
    end
    
  end
  
  describe "出力の検証" do 
    
    describe "#to_rot13" do 
      subject{answer.to_rot13}
      
      describe "前半13文字の変換(小文字)" do 
        context "aを入力" do 
          let(:input){"a"}
          it { is_expected.to eq "n"}
        end 
        context "bを入力" do 
          let(:input){"b"}
          it { is_expected.to eq "o"}
        end 
        context "cを入力" do 
          let(:input){"c"}
          it { is_expected.to eq "p"}
        end 
        context "dを入力" do 
          let(:input){"d"}
          it { is_expected.to eq "q"}
        end 
        context "eを入力" do 
          let(:input){"e"}
          it { is_expected.to eq "r"}
        end 
        context "fを入力" do 
          let(:input){"f"}
          it { is_expected.to eq "s"}
        end 
        context "gを入力" do 
          let(:input){"g"}
          it { is_expected.to eq "t"}
        end 
        context "hを入力" do 
          let(:input){"h"}
          it { is_expected.to eq "u"}
        end 
        context "iを入力" do 
          let(:input){"i"}
          it { is_expected.to eq "v"}
        end 
        context "jを入力" do 
          let(:input){"j"}
          it{ is_expected.to eq "w"}
        end
        context "kを入力" do 
          let(:input){"k"}
          it{ is_expected.to eq "x"}
        end
        context "lを入力" do 
          let(:input){"l"}
          it{ is_expected.to eq "y"}
        end
        context "mを入力" do 
          let(:input){"m"}
          it{ is_expected.to eq "z"}
        end
      end 
      
      describe "前半13文字の変換(大文字)" do
        context "Aを入力" do 
          let(:input){"A"}
          it { is_expected.to eq "N"}
        end 
        context "Bを入力" do 
          let(:input){"B"}
          it { is_expected.to eq "O"}
        end 
        context "Cを入力" do 
          let(:input){"C"}
          it { is_expected.to eq "P"}
        end 
        context "Dを入力" do 
          let(:input){"D"}
          it { is_expected.to eq "Q"}
        end 
        context "Eを入力" do 
          let(:input){"E"}
          it { is_expected.to eq "R"}
        end 
        context "Fを入力" do 
          let(:input){"F"}
          it { is_expected.to eq "S"}
        end 
        context "Gを入力" do 
          let(:input){"G"}
          it { is_expected.to eq "T"}
        end 
        context "Hを入力" do 
          let(:input){"H"}
          it { is_expected.to eq "U"}
        end 
        context "Iを入力" do 
          let(:input){"I"}
          it { is_expected.to eq "V"}
        end 
        context "Jを入力" do 
          let(:input){"J"}
          it{ is_expected.to eq "W"}
        end
        context "Kを入力" do 
          let(:input){"K"}
          it{ is_expected.to eq "X"}
        end
        context "Lを入力" do 
          let(:input){"L"}
          it{ is_expected.to eq "Y"}
        end
        context "Mを入力" do 
          let(:input){"M"}
          it{ is_expected.to eq "Z"}
        end
      end 
      
      describe "後半13文字の変換(小文字)" do
        context "nを入力" do 
          let(:input){"n"}
          it { is_expected.to eq "a"}
        end 
        context "oを入力" do 
          let(:input){"o"}
          it { is_expected.to eq "b"}
        end 
        context "pを入力" do 
          let(:input){"p"}
          it { is_expected.to eq "c"}
        end 
        context "qを入力" do 
          let(:input){"q"}
          it { is_expected.to eq "d"}
        end 
        context "rを入力" do 
          let(:input){"r"}
          it { is_expected.to eq "e"}
        end 
        context "sを入力" do 
          let(:input){"s"}
          it { is_expected.to eq "f"}
        end 
        context "tを入力" do 
          let(:input){"t"}
          it { is_expected.to eq "g"}
        end 
        context "uを入力" do 
          let(:input){"u"}
          it { is_expected.to eq "h"}
        end 
        context "vを入力" do 
          let(:input){"v"}
          it { is_expected.to eq "i"}
        end 
        context "wを入力" do 
          let(:input){"w"}
          it{ is_expected.to eq "j"}
        end
        context "xを入力" do 
          let(:input){"x"}
          it{ is_expected.to eq "k"}
        end
        context "yを入力" do 
          let(:input){"y"}
          it{ is_expected.to eq "l"}
        end
        context "zを入力" do 
          let(:input){"z"}
          it{ is_expected.to eq "m"}
        end
      end
      
      describe "後半13文字の変換(大文字)" do
        context "Nを入力" do 
          let(:input){"N"}
          it { is_expected.to eq "A"}
        end 
        context "Oを入力" do 
          let(:input){"O"}
          it { is_expected.to eq "B"}
        end 
        context "Pを入力" do 
          let(:input){"P"}
          it { is_expected.to eq "C"}
        end 
        context "Qを入力" do 
          let(:input){"Q"}
          it { is_expected.to eq "D"}
        end 
        context "Rを入力" do 
          let(:input){"R"}
          it { is_expected.to eq "E"}
        end 
        context "Sを入力" do 
          let(:input){"S"}
          it { is_expected.to eq "F"}
        end 
        context "Tを入力" do 
          let(:input){"T"}
          it { is_expected.to eq "G"}
        end 
        context "Uを入力" do 
          let(:input){"U"}
          it { is_expected.to eq "H"}
        end 
        context "Vを入力" do 
          let(:input){"V"}
          it { is_expected.to eq "I"}
        end 
        context "Wを入力" do 
          let(:input){"W"}
          it{ is_expected.to eq "J"}
        end
        context "Xを入力" do 
          let(:input){"X"}
          it{ is_expected.to eq "K"}
        end
        context "Yを入力" do 
          let(:input){"Y"}
          it{ is_expected.to eq "L"}
        end
        context "Zを入力" do 
          let(:input){"Z"}
          it{ is_expected.to eq "M"}
        end
      end 
      
      describe "任意の入力(前半or後半or大文字or小文字)の例" do 
        context "HeLLoと入力" do 
          let(:input){"HeLLo"}
          it{is_expected.to eq "UrYYb"}
        end 
        context "Abjurerと入力" do 
          let(:input){"Abjurer"}
          it{is_expected.to eq "Nowhere"}
        end 
        context "Beと入力" do 
          let(:input){"Be"}
          it{is_expected.to eq "Or"}
        end 
        context "Gnatと入力" do 
          let(:input){"Gnat"}
          it{is_expected.to eq "Tang"}
        end 
      end
      
    end
    
  end
  
end 