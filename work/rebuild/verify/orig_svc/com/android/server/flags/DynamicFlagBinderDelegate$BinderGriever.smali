.class public Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;
.super Ljava/lang/Object;
.source "DynamicFlagBinderDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;I)V
    .registers 3

    .line 269
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput p2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->mPid:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;ILcom/android/server/flags/DynamicFlagBinderDelegate-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->-$$Nest$fgetmCallbacks(Lcom/android/server/flags/DynamicFlagBinderDelegate;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 276
    :try_start_7
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {v1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->-$$Nest$fgetmCallbacks(Lcom/android/server/flags/DynamicFlagBinderDelegate;)Ljava/util/Map;

    move-result-object v1

    iget p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->mPid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method
