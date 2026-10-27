.class public final synthetic Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeviceStateController;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeviceStateController;Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DeviceStateController;

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    iput p4, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DeviceStateController;

    iget-object v1, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    iget p0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/DeviceStateController;->$r8$lambda$qyHxZpZDY9iy0Z4dhSvPOdk-Dus(Lcom/android/server/wm/DeviceStateController;Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;I)V

    return-void
.end method
