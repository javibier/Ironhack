require_relative("../lib/lexiconomitron.rb")

RSpec.describe Lexiconomitron do
		before(:each) do
			@lexi = Lexiconomitron.new
		end	

		describe "eat_t" do
          it "removes every letter t from the input" do
		  	expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
		  end

		  it "leaves strings without t unchanged" do
		  	expect(@lexi.eat_t("wannna")).to eq("wannna")
		  end
		end

		describe "shazam" do

		  it "reverses the array, returns first and last worda and then removes every letter t from the input" do
		 
			expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
		  end
		end

		describe "oompa_loompa" do
		  it "oompa loompa test" do
		 
			expect(@lexi.oompa_loompa(["you","wannna","bet","my","lover"])).to eq(["you","be","my"])

		 end
		end
	end