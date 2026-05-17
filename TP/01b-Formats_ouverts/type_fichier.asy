import macros_cg;
unitsize(2cm);
srand(seconds());

defaultpen(Helvetica(series="b",shape="n")+fontsize(20pt)+white); // Stylo par défaut

real h = 1, l = 0.75*h;
path fond = (2*l/3,h)--(0,h)--(0,0)--(l,0)--(l,0.75*h)--(2*l/3,0.75*h)--(2*l/3,h)--(l,0.75*h);

string[] types = {"OGG","PSD","PDF","RAR","CSV","ODT","DOC","XLS","MP3","XCF","MKV","PNG","QT","JPG","ZIP","WMA","JSON","FLAC","HTML","MPEG","TXT","CSS","AVI","PUB","XML","ODP","PPT","HEIC"};


for(int k=0;k<types.length;++k){
	picture pic;
	draw(pic, fond, gray);
	label(pic, types[k], (l/3,h/3), Fill(rgb(unitrand(),unitrand(),unitrand() )));
	add(shift(1.2*(k%7), 1.2*(k#7))*pic);
}









//shipout(bbox(3mm,invisible));

