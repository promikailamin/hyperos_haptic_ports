.class public final synthetic Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/AlarmQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/AlarmQueue;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/AlarmQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/AlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue;->lambda$setNextAlarmLocked$0$com-android-server-utils-AlarmQueue()V

    return-void
.end method
