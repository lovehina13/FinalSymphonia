for json_file in $(find . -name "*.json")
do
  python -m json.tool "${json_file}" > "${json_file}.pretty"
  mv "${json_file}.pretty" "${json_file}"
done
