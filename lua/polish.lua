-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    tf = "terraform",
  },
  filename = {
    ["Dockerfile"] = "dockerfile",
    [".gitlab-ci.yml"] = "yaml.gitlab-ci",
  },
  pattern = {
    ["**/**/chart/.*"] = "helm",
    ["**/**/tasks/.*.y*ml"] = "yaml.ansible",
    ["**/**/playbooks/.*.y*ml"] = "yaml.ansible",
    ["**/**/roles/.*.y*ml"] = "yaml.ansible",
    ["**/**/templates/.*.y*ml"] = "yaml.ansible",
    ["**/**/vars/.*.y*ml"] = "yaml.ansible",
    ["**/**/defaults/.*.y*ml"] = "yaml.ansible",
  },
}
