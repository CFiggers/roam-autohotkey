Replace(string){
    oldclip := Clipboard
    Clipboard := string
    SendInput, ^v
    Sleep 100
    Clipboard := oldclip
}

:*:r-360d::
    ; Produces the following:
    ;
    ; - {{[[TODO]]}} **1) Vision**
    ;     - 
    ;     - Inspiration
    ;         - Definition
    ;             - What needs to be done? Describe it. Does the task have clear milestones? **Can you give a sample of what Success looks like?**
    ;         - Motive
    ;             - What's the broader vision for completion? **WHY are we doing this?**
    ;         - Timeline
    ;             - When does this need to start? Preferred deadline? **Drop-dead deadline?** 
    ;         - Impact
    ;             - What are the stakes if this goes well? Poorly? How will this affect people down-stream? Consider telling a story.
    ; - {{[[TODO]]}} **2) Resources**
    ;     -  
    ;     - Inspiration
    ;         - Access
    ;             - Online – website passwords
    ;             - Physical – keys to a building or room, login info for a computer
    ;             - Storage – online or physical
    ;         - Expertise 
    ;             - “how to” courses, blog posts, training sessions
    ;             - Who to consultant on specific parts of the project
    ;         - Manpower 
    ;             - Team members? Outside assistance?
    ;             - Hours allocated to complete
    ;         - Tooling/equipment (Hardware, Software)
    ;         - Money needed, access to credit cards, PayPal accounts
    ;         - Systems / Checklists
    ;         - **Decision-Making Guidelines**
    ;         - **Approvals and/or** ^^**Authority to Operate**^^
    ;         - Itineraries of people or events
    ;         - Language / translators
    ; - {{[[TODO]]}} **3) Definition of "Done"**
    ;     - 
    ;     - Inspiration
    ;         - Explicit specifications of the finished project
    ;         - What sign-offs would be required from management/client (and an idea of what order that should happen in)
    ;         - Wrap-up tasks (e.g., where to store things once completed—files, in-progress work, assets used, research collected)
    ;         - How to double-check against requirements
    Replace("- {{[[TODO]]}} [[360 Delegation]]`n    - {{[[TODO]]}} **1) Vision**`n        - `n        - Inspiration`n            - Definition`n                - What needs to be done? Describe it. Does the task have clear milestones? **Can you give a sample of what Success looks like?**`n            - Motive`n                - What's the broader vision for completion? **WHY are we doing this?**`n            - Timeline`n                - When does this need to start? Preferred deadline? **Drop-dead deadline?** `n            - Impact`n                - What are the stakes if this goes well? Poorly? How will this affect people down-stream? Consider telling a story.`n    - {{[[TODO]]}} **2) Resources**`n        -  `n        - Inspiration`n            - Access`n                - Online – website passwords`n                - Physical – keys to a building or room, login info for a computer`n                - Storage – online or physical`n            - Expertise `n                - “how to” courses, blog posts, training sessions`n                - Who to consultant on specific parts of the project`n            - Manpower `n                - Team members? Outside assistance?`n                - Hours allocated to complete`n            - Tooling/equipment (Hardware, Software)`n            - Money needed, access to credit cards, PayPal accounts`n            - Systems / Checklists`n            - **Decision-Making Guidelines**`n            - **Approvals and/or** ^^**Authority to Operate**^^`n            - Itineraries of people or events`n            - Language / translators`n    - {{[[TODO]]}} **3) Communication**`n        - `n        - Inspiration`n            - In general, who needs to be informed of what? When/how?`n            - In general, who knows when things went well? When/how?`n            - In general, who knows when things go poorly? When/how?`n            - What events trigger **immediate** notification? To whom, of what?`n            - How and to whom to escalate questions/issues?`n            - How to get clarification if anything is not understood?`n    - {{[[TODO]]}} **4) Definition of ""Done""**`n        - `n        - Inspiration`n            - Explicit specifications of the finished project`n            - What sign-offs would be required from management/client (and an idea of what order that should happen in)`n            - Wrap-up tasks (e.g., where to store things once completed—files, in-progress work, assets used, research collected)`n            - How to double-check against requirements")
    Sleep 700
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {CtrlDown} {Up} 
    Sleep 100
    SendInput {CtrlUp}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {CtrlDown} {Up}
    Sleep 100
    SendInput {CtrlUp}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {CtrlDown} {Up}
    Sleep 100
    SendInput {CtrlUp}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {Down}
    Sleep 100
    SendInput {CtrlDown} {Up}
    Sleep 100
    SendInput {CtrlUp}
    Sleep 100
return