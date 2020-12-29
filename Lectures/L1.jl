### A Pluto.jl notebook ###
# v0.12.17

using Markdown
using InteractiveUtils

# ╔═╡ c6144a10-47a0-11eb-22b9-dfd100f82e1f
begin
	using Pkg
	Pkg.add.(["Images","ImageIO","ImageMagick"])
	using Images
end

# ╔═╡ 27ba2730-47a1-11eb-1b96-cf281ec5864c
url = "https://i.imgur.com/VGPeJ6s.jpg"

# ╔═╡ 6d7e90d0-47a1-11eb-23b0-b956b56c1b22
download(url,"philip.jpg")

# ╔═╡ 0b54a4b0-47a3-11eb-2fda-c12dded73b7b
RGBX(1,0.5,0.5)

# ╔═╡ 1998d59e-47a3-11eb-24c7-0df767077078
size(philip)

# ╔═╡ 2b246960-47a3-11eb-0f4d-534a1fd3d56b
philip[1:1000,1:400]

# ╔═╡ 6cb402f0-47a3-11eb-0fe2-1349ec0f89c9
begin
	(h, w) = size(philip)
	head = philip[(h ÷ 2):h, (w ÷ 10):(9w ÷ 10)]
end

# ╔═╡ 9ce7561e-47a3-11eb-303c-f14193f1052f
size(head)

# ╔═╡ a01ae2d0-47a3-11eb-361a-37a0b8256bc6
size(philip)

# ╔═╡ a2af2240-47a3-11eb-0de5-034785d18c92
[head head;head head]

# ╔═╡ c0170eae-47a3-11eb-3635-7900777c0748
[
	head reverse(head,dims=2)
	reverse(head, dims=1) reverse(reverse(head,dims=2),dims=1)
] 

# ╔═╡ 0a659450-47a4-11eb-3db3-dbe84bf0939b
new_phil = copy(head)

# ╔═╡ 4dd8baf0-47a4-11eb-1683-85215ab7f5bc
new_phil[100:200,1:100] .= RGB(0,1,0)

# ╔═╡ 5f3a7f8e-47a4-11eb-207c-658d802f61be
new_phil

# ╔═╡ 9884f0f0-47a4-11eb-376e-ed8838083417
function redify(color)
	return RGB(color.r,0,0)
end

# ╔═╡ a4d408a0-47a4-11eb-22ec-ab85c6551f41
new_phil2 = copy(new_phil)

# ╔═╡ b2c97d52-47a4-11eb-0dfe-4115fcd1f59f
begin
	poor_phil = decimate(new_phil,3)
	size(poor_phil)
	poor_phil
end

# ╔═╡ 33ab4e20-47a6-11eb-07a8-8bb46671145c
convolve(head, blur(2))

# ╔═╡ a14b3332-47a8-11eb-14e2-196bfbfeecfe


# ╔═╡ a1199be0-47a8-11eb-1971-fdb89c561105
element = 1//1

# ╔═╡ a578b040-47a8-11eb-1fbd-f9e5eb680df1
fill(element,3,4) 

# ╔═╡ cb7ff2d0-47a8-11eb-3bc9-f361ff13bbf0
typeof(element)

# ╔═╡ ebdcb53e-47a8-11eb-1660-353aa67bfa6e
keeptrack = [typeof(1), typeof(1.0), typeof("one"), typeof(1//1)]

# ╔═╡ fc2d09e0-47a8-11eb-22c2-013caff40755
typeof(keeptrack)

# ╔═╡ 03bf5cd0-47a9-11eb-3a9a-cfaf895e6cbf
string

# ╔═╡ Cell order:
# ╠═c6144a10-47a0-11eb-22b9-dfd100f82e1f
# ╠═27ba2730-47a1-11eb-1b96-cf281ec5864c
# ╠═6d7e90d0-47a1-11eb-23b0-b956b56c1b22
# ╠═0b54a4b0-47a3-11eb-2fda-c12dded73b7b
# ╠═1998d59e-47a3-11eb-24c7-0df767077078
# ╠═2b246960-47a3-11eb-0f4d-534a1fd3d56b
# ╠═6cb402f0-47a3-11eb-0fe2-1349ec0f89c9
# ╠═9ce7561e-47a3-11eb-303c-f14193f1052f
# ╠═a01ae2d0-47a3-11eb-361a-37a0b8256bc6
# ╠═a2af2240-47a3-11eb-0de5-034785d18c92
# ╠═c0170eae-47a3-11eb-3635-7900777c0748
# ╠═0a659450-47a4-11eb-3db3-dbe84bf0939b
# ╠═4dd8baf0-47a4-11eb-1683-85215ab7f5bc
# ╠═5f3a7f8e-47a4-11eb-207c-658d802f61be
# ╠═9884f0f0-47a4-11eb-376e-ed8838083417
# ╠═a4d408a0-47a4-11eb-22ec-ab85c6551f41
# ╠═b2c97d52-47a4-11eb-0dfe-4115fcd1f59f
# ╠═33ab4e20-47a6-11eb-07a8-8bb46671145c
# ╠═a14b3332-47a8-11eb-14e2-196bfbfeecfe
# ╠═a1199be0-47a8-11eb-1971-fdb89c561105
# ╠═a578b040-47a8-11eb-1fbd-f9e5eb680df1
# ╠═cb7ff2d0-47a8-11eb-3bc9-f361ff13bbf0
# ╠═ebdcb53e-47a8-11eb-1660-353aa67bfa6e
# ╠═fc2d09e0-47a8-11eb-22c2-013caff40755
# ╠═03bf5cd0-47a9-11eb-3a9a-cfaf895e6cbf
