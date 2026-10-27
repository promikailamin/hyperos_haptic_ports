.class public Lcom/android/server/wm/InsetsPolicyStub;
.super Ljava/lang/Object;
.source "InsetsPolicyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicyStub$SINGLETON;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/InsetsPolicyStub;
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/wm/InsetsPolicyStub$SINGLETON;->INSTANCE:Lcom/android/server/wm/InsetsPolicyStub;

    return-object v0
.end method


# virtual methods
.method public useFocusedWindowForStatusControl(Lcom/android/server/wm/WindowState;Z)Z
    .registers 4
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "forceShowsSystemBarsForWindowingMode"    # Z

    .line 19
    const/4 v0, 0x0

    return v0
.end method
