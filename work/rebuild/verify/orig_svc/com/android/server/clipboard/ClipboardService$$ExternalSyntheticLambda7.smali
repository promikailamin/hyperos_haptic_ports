.class public final synthetic Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/clipboard/ClipboardService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/util/IntArray;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;IILandroid/util/IntArray;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/clipboard/ClipboardService;

    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$3:Landroid/util/IntArray;

    iput p5, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/clipboard/ClipboardService;

    iget v1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$2:I

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$3:Landroid/util/IntArray;

    iget p0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda7;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/clipboard/ClipboardService;->$r8$lambda$r7_APSHIm3pbFwhRmsfO8bONIik(Lcom/android/server/clipboard/ClipboardService;IILandroid/util/IntArray;I)V

    return-void
.end method
