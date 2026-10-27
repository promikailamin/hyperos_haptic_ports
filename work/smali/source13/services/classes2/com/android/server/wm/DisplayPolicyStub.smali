.class public interface abstract Lcom/android/server/wm/DisplayPolicyStub;
.super Ljava/lang/Object;
.source "DisplayPolicyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicyStub$Instance;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/wm/DisplayPolicyStub;
    .registers 1

    .line 13
    invoke-static {}, Lcom/android/server/wm/DisplayPolicyStub$Instance;->-$$Nest$sfgetsInstance()Lcom/android/server/wm/DisplayPolicyStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtraNavigationBarAppearance(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 6
    .param p1, "winCandidate"    # Lcom/android/server/wm/WindowState;
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p4, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiVersion()Z
    .registers 2

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public abstract notifyOnScroll(Z)V
.end method
