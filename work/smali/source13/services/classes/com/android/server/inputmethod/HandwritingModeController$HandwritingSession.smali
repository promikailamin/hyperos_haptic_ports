.class final Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
.super Ljava/lang/Object;
.source "HandwritingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/HandwritingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HandwritingSession"
.end annotation


# instance fields
.field private final mHandwritingChannel:Landroid/view/InputChannel;

.field private final mRecordedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestId:I


# direct methods
.method private constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "handwritingChannel"    # Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p3, "recordedEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    .line 292
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    .line 293
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getHandwritingChannel()Landroid/view/InputChannel;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    return-object v0
.end method

.method getRecordedEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    return-object v0
.end method

.method getRequestId()I
    .registers 2

    .line 297
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    return v0
.end method
