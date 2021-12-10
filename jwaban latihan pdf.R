
a = c(5,20,16,7,17)
b = c(7,18,12,9,21)
c = c(6,25,8,5,13)
rumah=matrix(c(a,b,c),nrow=3,byrow=TRUE)
rumah


#No1#
bahan =matrix(c(5,7,6,20,18,25,16,12,8,7,9,5,17,21,13),3) 
harga =matrix(c(15,8,5,1,10),5)
rumah1=matrix(c(5,7,12),1)
rumah1%*%bahan%*%harga #[1x3]*[3x5]*[5x1]

harga%*%bahan%*%rumah1 #[1x5]*[5x3]*[3x1]

#NO2#
x =c(2,3,2,5,6,1,4,1)
y =c(5,8,8,7,11,3,10,4)
lm(y~x)
#y=1,25*(x)+3,25

1.25*3.25+3.25

#NO3#
kaos = c(8,7,7,7,6,6,6,5,5)
kemeja = c(10,10,8,5,3,2,2,1,1)
baru = c(3,2,1,4,2,1,2,2,1)
lm(baru~kaos+kemeja)

#baru(y) =1.2275*(kaos(x))-0.2156*(kemeja(x2))-4.7685 //linear berganda
1.22775*6-0.2156*4-4.7685

#NO4#
data = read.csv("data_latihan.csv")
names(data)

lm(IPK~Penghasilan.Orang.Tua..Rp.
   +Jarak.Rumah.ke.Kampus..KM.
   +Jumlah.Akun.FB
   +Nilai.UN.SMA,
   data = data)

#membuat prediksi mengunakan predict
model = lm(IPK~Penghasilan.Orang.Tua..Rp.
           +Jarak.Rumah.ke.Kampus..KM.
           +Jumlah.Akun.FB
           +Nilai.UN.SMA, data = data)

data_baru = data.frame(Penghasilan.Orang.Tua..Rp.=2500000,
                       Jarak.Rumah.ke.Kampus..KM.=10,
                       Jumlah.Akun.FB=1,
                       Nilai.UN.SMA=7.0)
predict(model, data_baru)
getwd()

