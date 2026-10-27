.class final Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/PresentationStatsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PresentationStatsEventInternal"
.end annotation


# instance fields
.field mAvailableCount:I

.field mCountFilteredUserTyping:I

.field mCountNotShownImePresentationNotDrawn:I

.field mCountNotShownImeUserNotSeen:I

.field mCountShown:I

.field mDisplayPresentationType:I

.field mIsDatasetAvailable:Z

.field mNoPresentationReason:I

.field mRequestId:I

.field final synthetic this$0:Lcom/android/server/autofill/PresentationStatsEventLogger;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->this$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 224
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 226
    return-void
.end method
