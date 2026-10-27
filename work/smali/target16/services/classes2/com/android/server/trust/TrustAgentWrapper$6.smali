.class public Lcom/android/server/trust/TrustAgentWrapper$6;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2

    .line 709
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$6;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 2

    .line 712
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$6;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmWithinSecurityLockdownWindow(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    return-void
.end method
