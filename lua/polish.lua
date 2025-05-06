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
    [".*/chart/.*"] = "helm",
    [".*/tasks/.*%.y[a]?ml"] = "yaml.ansible",
    [".*/playbooks/.*%.y[a]?ml"] = "yaml.ansible",
    [".*/roles/.*%.y[a]?ml"] = "yaml.ansible",
    [".*/templates/.*%.y[a]?ml"] = "yaml.ansible",
    [".*/vars/.*%.y[a]?ml"] = "yaml.ansible",
    [".*/defaults/.*%.y[a]?ml"] = "yaml.ansible",
    [".*/handlers/.*%.y[a]?ml"] = "yaml.ansible",
  },
}
