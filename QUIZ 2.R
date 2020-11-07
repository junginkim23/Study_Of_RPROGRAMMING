#<QUIZ 2>

#(1)(R) read.table �Լ��� �̿��ؼ� Expr.txt ���ϰ� Patient.txt ������ �ҷ����� �ڵ带 �ۼ��ϼ���.
expr <- read.table(file="Expr.txt",header = TRUE,row.names = 1)
patient <- read.table(file="Patient.txt",header = TRUE,fill=TRUE,row.names = 1)

#(2)correlation�̶�� �̸��� ���͸� �ϳ� �����ؼ� �������� �������� ȯ���� �����Ⱓ���� ������� (Pearson correlation)�� �����ϰ�, ������ �� ��ҿ� �ش� ������ �̸��� �Ҵ��ϴ� �ڵ带 �ۼ��ϼ���.
survival <- as.numeric(patient$Survival)
correlation <- c()
for (i in 1:nrow(expr)) correlation[i] <- cor(as.numeric(expr[i,]),survival)
names(correlation) <- row.names(expr)

#(3)correlation ���Ϳ� ����� ������ ���� ������谡 ���� ���� (ȯ���� ���Ŀ� ���� ���� ������ ��ĥ ������ ����Ǵ�) �����ڸ� ã�Ƴ� ��, target�̶�� �̸��� �������������� �����Ͽ� �ش� �������� ȯ�ں� �������� �����Ⱓ ������ �����ϴ� �ڵ带 �ۼ��ϼ���.
min.i <- which.min(correlation)
rarp1 <- as.numeric(expr[min.i,])
survival1 <- patient[["Survival"]]

target <- data.frame(rarp1,survival1)
colnames(target) <- c("RARP1","Survival")
rownames(target) <- rownames(patient)

#(4)ggplot() �Լ��� ����ؼ� 3�� �������� ������ target ������ ����� ������-�����Ⱓ ������ scatter plot �׷����� ǥ���ϰ� �߼����� �׸��� �ڵ带 �ۼ��ϼ���.
install.packages("ggplot2")
library("ggplot2")
ggplot(data=target,aes(x=RARP1,y=Survival))+
  geom_point(size=2)+ 
  geom_smooth() +
  labs(title = "RARP1-Survival"
       ,x="RARP1"
       ,y="Survival")

