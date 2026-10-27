.class final Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackKeyRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3
    .param p2, "gestures"    # I

    .line 2485
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2486
    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(II)V

    .line 2487
    return-void
.end method


# virtual methods
.method getMaxMultiPressCount()I
    .registers 2

    .line 2491
    const/4 v0, 0x1

    return v0
.end method

.method onLongPress(J)V
    .registers 4
    .param p1, "downTime"    # J

    .line 2501
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mbackLongPress(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2502
    return-void
.end method

.method onPress(J)V
    .registers 6
    .param p1, "downTime"    # J

    .line 2496
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mbackKeyPress(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2497
    return-void
.end method
