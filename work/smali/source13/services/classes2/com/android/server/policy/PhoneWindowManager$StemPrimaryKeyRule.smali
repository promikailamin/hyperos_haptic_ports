.class final Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StemPrimaryKeyRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3
    .param p2, "gestures"    # I

    .line 2509
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2510
    const/16 p1, 0x108

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(II)V

    .line 2511
    return-void
.end method


# virtual methods
.method getMaxMultiPressCount()I
    .registers 2

    .line 2515
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetMaxMultiPressStemPrimaryCount(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    return v0
.end method

.method onLongPress(J)V
    .registers 4
    .param p1, "eventTime"    # J

    .line 2525
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2526
    return-void
.end method

.method onMultiPress(JI)V
    .registers 5
    .param p1, "downTime"    # J
    .param p3, "count"    # I

    .line 2530
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 2531
    return-void
.end method

.method onPress(J)V
    .registers 5
    .param p1, "downTime"    # J

    .line 2520
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 2521
    return-void
.end method
