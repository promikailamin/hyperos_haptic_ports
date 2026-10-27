.class public Lcom/android/server/am/ServiceRecord$4;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;

.field public final synthetic val$localUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V
    .registers 5

    .line 1766
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$4;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$4;->val$localForegroundId:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$4;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1769
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    if-nez v0, :cond_b

    return-void

    .line 1774
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$4;->val$localPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$4;->val$localForegroundId:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord$4;->val$localUserId:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/notification/NotificationManagerInternal;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V

    return-void
.end method
