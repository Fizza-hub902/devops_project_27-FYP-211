# Lab 04 Submission - Fizza Shameen (23-NTU-CS-1157)

## 9.1 The Four URLs

1. **Your devops-lab repository:**  
   https://github.com/Fizza-hub902/devops_labs

2. **The merged pull request from Task 3 (on your own repository):**  
   https://github.com/Fizza-hub902/devops_labs/pulls?q=is%3Apr+is%3Aclosed

3. **A review comment you wrote on your partner’s pull request (permalink):**  
   https://github.com/Fizza-hub902/devops_labs/pull/3#discussion_r4301657742  
   https://github.com/Fizza-hub902/devops_labs/pull/3#discussion_r4301658933

4. **Your pull request to the class repository from Task 4:**  
   https://github.com/rehannsarwar1/devops-lab04-upstream/pull/48

---

## 9.2 The Short Answers

1. **What is origin/main, and when is it wrong?**  
   `origin/main` is a local tracking branch that represents the state of the `main` branch on your remote repository (`origin`) as of the last time you fetched or communicated with it. It can be wrong (outdated) when other collaborators have pushed new commits to the remote repository and you have not yet run `git fetch` to update your local tracking references.

2. **Name the three repositories involved in Task 4 and say which you can write to:**  
   1. Upstream Repository (`rehannsarwar1/devops-lab04-upstream`): Read-only (no direct write access; changes are contributed via pull requests).  
   2. Fork/Origin Repository (`Fizza-hub902/devops-lab04-upstream`): Read and write access.  
   3. Local Clone: Read and write access on your machine.

3. **Why was the force-push in Task 7.6 acceptable, when Lab 03 told you never to force-push?**  
   It was acceptable because the force-push (`--force-with-lease`) was performed solely on a private feature branch located on your own personal fork (`origin`), where no other developers were working or depending on your branch history. Lab 03 forbids force-pushing to shared production or main branches where it would overwrite or disrupt teammates' work history.
