**### Make a fork or copy of this repo and fill in your team submission details! ###**

# AMD_Robotics_Hackathon_2025_Almassas_Assistant
*Submission is for the task you did in Mission 2, since Mission 1 was a "hello world" task for every team.*

## Team Information

**Team:** * team number 5, Footakagool, Karim Ziadi

**Summary:** 🚀 🚀

This project, presents a mobile manipulation system designed to operate within common human environments, such as a tabletop or konbini counter. Our robot hardware leverages the robustness of open-source designs, specifically integrating components from the Lekiwi and XLerobot projects.

We trained the mobile arm for two distinct, challenging manipulation tasks, demonstrating both precise object relocation and high-dexterity grip control:

***Object Relocation (Pick-and-Place):*** The robot executes a multi-step pick-and-place sequence. It picks up a bottle and then navigates to and places it inside a designated blue container. This task validates the robot's ability to perform reliable, multi-stage industrial-style object handling.

[Video Demonstration: Pick and Place Task using ACT Policy](https://youtu.be/rS5uCKmigTg)

---

***High-Dexterity Precision Grip:*** This model showcases advanced manipulation capability. Using a suction cup gripper, the robot is tasked with isolating and picking a single business card from a densely stacked box. This task is nearly impossible to perform reliably with conventional parallel grippers and demonsFunctiontrates the effectiveness of our dexterity-focused training for handling thin, tightly packed objects.



## Judging Criteria

### 1. Mission 2 Description (10 points)
- Our project successfully achieved two distinct, high-value manipulation skills: reliable object relocation (Bottle PnP) and high-dexterity precision (Relocation), both controlled by a single, advanced policy.

Reliable Relocation: The bottle pick-and-place demonstrates the core reliability needed for industrial assembly and kitting. The multi-step sequence confirms the learned policy's robustness for repeatable factory tasks.

High-Dexterity Precision: The specialized task (e.g., handling the thin card or similar delicate item, inferred from previous context) addresses a significant industry challenge: handling thin, non-rigid, or tightly packed objects. This skill is essential for applications in electronics assembly or specialized handling.


### 2. Creativity (30 points)
- Our unique contribution is the dual-skill application of the ACT policy to manage both standard PnP and a high-precision dexterity task on an open-source hardware platform (Lekiwi/XLerobot).

ACT for High-Fidelity Control: We utilized the ACT policy's ability to predict action chunks (sequences of future actions). This is highly creative because it inherently gives the robot a planning horizon, leading to smoother, less reactive, and more reliable motion for the multi-step task than traditional single-action policies.

Innovation in Gripper Control: We successfully applied the policy to harness a specialized gripper (suction cup), proving that the method can be trained to learn the complex temporal dependencies required for precise engagement and separation specific to high-dexterity tasks.

Dual-Skill Demonstration: The project uniquely showcases the versatility of a single learning architecture by successfully deploying two fundamentally different learned skills (general relocation and highly precise dexterity).

### 3. Technical implementations (20 points)
- Our unique contribution is the innovative application of the ACT policy to create a highly robust, yet specialized, dual-skill system.

We focused on capturing highly precise trajectories necessary for the dexterity task, ensuring the data supported ACT's prediction of action chunks. This training resulted in a policy that handles the entire complex sequence from approach to release as a continuous, planned motion.

Result (Inference): The inference successfully demonstrates the full multi-step planning capability of the ACT policy. The policy runs continuously, executing the learned chunks with the necessary low-latency control to maintain task reliability.

### 4. Ease of use (10 points)
- You want to focus the Ease of Use section solely on how your hardware solution (the Lekiwi/XLerobot base and the specialized suction cup gripper) contributes to the project's generalizability and ease of use.

Here is the revised answer for Point 4:

4. Ease of Use (10 points)
Our hardware solution, combining a modular base with a specialized end-effector, significantly enhances the project's ease of use and flexibility.

Generalizability and Adaptability of the Solution:

The choice of the Lekiwi/XLerobot mobile platform is inherently generalizable, allowing the robot to perform manipulation tasks across various counter or tabletop environments, rather than being confined to a single, fixed workstation.

The specialized suction cup gripper increases adaptability. It allows the robot to reliably handle objects (like the business card) that would be impossible or highly unreliable for a standard parallel gripper, extending the system's operational scope without requiring complex re-engineering of the arm.

The simple mechanism of the suction cup means the learned dexterity skill is geometry-specific, making it applicable to any similar flat, stacked items.

Types of Commands or Interfaces Needed to Control the Robot:

The mobile arm platform is designed for accessibility. The successful implementation of the high-level ACT policy on this hardware means the operator only needs a single, simple initiation command to execute the multi-step sequence, maximizing


## Code submission

This is the directory tree of this repo, you need to fill in the `mission` directory with your submission details.

```terminal
AMD_Robotics_Hackathon_2025_ProjectTemplate-main/
├── README.md
└── mission
    ├── code
    │   └── <code and script>
    └── wandb
        └── <latest run directory copied from wandb of your training job>
```


The `latest-run` is generated by wandb for your training job. Please copy it into the wandb sub directory of you Hackathon Repo.

The whole dir of `latest-run` will look like below:

```terminal
$ tree outputs/train/smolvla_so101_2cube_30k_steps/wandb/
outputs/train/smolvla_so101_2cube_30k_steps/wandb/
├── debug-internal.log -> run-20251029_063411-tz1cpo59/logs/debug-internal.log
├── debug.log -> run-20251029_063411-tz1cpo59/logs/debug.log
├── latest-run -> run-20251029_063411-tz1cpo59
└── run-20251029_063411-tz1cpo59
    ├── files
    │   ├── config.yaml
    │   ├── output.log
    │   ├── requirements.txt
    │   ├── wandb-metadata.json
    │   └── wandb-summary.json
    ├── logs
    │   ├── debug-core.log -> /dataset/.cache/wandb/logs/core-debug-20251029_063411.log
    │   ├── debug-internal.log
    │   └── debug.log
    ├── run-tz1cpo59.wandb
    └── tmp
        └── code
```

**NOTES**

1. The `latest-run` is the soft link, please make sure to copy the real target directory it linked with all sub dirs and files.
2. Only provide (upload) the wandb of your last success pre-trained model for the Mission.


## Additional Links
*For example, you can provide links to:*

- *Link to a video of your robot performing the task*
- *URL of your dataset in Hugging Face*
- *URL of your model in Hugging Face*
- *Link to a blog post describing your work*