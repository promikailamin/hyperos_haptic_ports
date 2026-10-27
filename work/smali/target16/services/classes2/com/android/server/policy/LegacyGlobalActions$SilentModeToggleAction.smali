.class public Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/globalactions/ToggleAction;
.source "LegacyGlobalActions.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 8

    .line 636
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v4, 0x10404a3

    const v5, 0x10404a2

    const v1, 0x10803c8

    const v2, 0x10803c7

    const v3, 0x10404a5

    move-object v0, p0

    .line 637
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/globalactions/ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 2

    if-eqz p1, :cond_d

    .line 647
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAudioManager(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    .line 649
    :cond_d
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAudioManager(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
