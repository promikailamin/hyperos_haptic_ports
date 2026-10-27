.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/IBinderSession;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/IBinderSession;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/IBinderSession;

    iput-wide p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/IBinderSession;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->$r8$lambda$QiDnMMKg1JpZvr40fh3mCflc3tA(Landroid/app/IBinderSession;J)V

    return-void
.end method
