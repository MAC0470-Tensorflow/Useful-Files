git checkout master

git pull upstream master

echo $1

if [ $1 == "debora" ]; then
	git config user.name "Débora D'Angelo"
	git config user.email "debora.d.r.a@usp.br"
elif [ $1 == "pedro" ]; then
	git config user.name "Pedro Sato"
	git config user.email "kamorst@usp.br"
else
	echo "ERRO Digite seu nome - pedro ou debora?"
	exit
fi

echo "Confira se a configuração esta correta!"
git config --list
echo ""
echo ""

echo "ATENÇÃO! Não se esqueça de escolher sua branch. A seguir, as branches disponíveis."

git branch
