server:
	bundle exec rails server
alias s := server

console:
	bundle exec rails console
alias c := console

reset_data:
	bundle exec rails purge_data
	bundle exec rails generate_data

benchmark:
	echo "UNOPTIMIZED"
	time curl --silent -o /dev/null localhost:3002/authors/unoptimized

	echo "PARTIALLY OPTIMIZED"
	time curl --silent -o /dev/null localhost:3002/authors/partially_optimized

	echo "OPTIMIZED"
	time curl --silent -o /dev/null localhost:3002/authors/optimized
