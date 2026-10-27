.class final Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlwaysOnVibration"
.end annotation


# instance fields
.field public final alwaysOnId:I

.field public final attrs:Landroid/os/VibrationAttributes;

.field public final effects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;"
        }
    .end annotation
.end field

.field public final opPkg:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/util/SparseArray;)V
    .registers 6
    .param p1, "alwaysOnId"    # I
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Landroid/os/VibrationAttributes;",
            "Landroid/util/SparseArray<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;)V"
        }
    .end annotation

    .line 1343
    .local p5, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    .line 1345
    iput p2, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->uid:I

    .line 1346
    iput-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->opPkg:Ljava/lang/String;

    .line 1347
    iput-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    .line 1348
    iput-object p5, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    .line 1349
    return-void
.end method
