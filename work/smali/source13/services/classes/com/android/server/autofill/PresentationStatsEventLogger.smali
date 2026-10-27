.class public final Lcom/android/server/autofill/PresentationStatsEventLogger;
.super Ljava/lang/Object;
.source "PresentationStatsEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;,
        Lcom/android/server/autofill/PresentationStatsEventLogger$NotShownReason;
    }
.end annotation


# static fields
.field public static final NOT_SHOWN_REASON_ACTIVITY_FINISHED:I = 0x4

.field public static final NOT_SHOWN_REASON_ANY_SHOWN:I = 0x1

.field public static final NOT_SHOWN_REASON_REQUEST_TIMEOUT:I = 0x5

.field public static final NOT_SHOWN_REASON_SESSION_COMMITTED_PREMATURELY:I = 0x6

.field public static final NOT_SHOWN_REASON_UNKNOWN:I = 0x0

.field public static final NOT_SHOWN_REASON_VIEW_CHANGED:I = 0x3

.field public static final NOT_SHOWN_REASON_VIEW_FOCUS_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PresentationStatsEventLogger"


# instance fields
.field private mEventInternal:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    .line 88
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 89
    return-void
.end method

.method public static forSessionId(I)Lcom/android/server/autofill/PresentationStatsEventLogger;
    .registers 2
    .param p0, "sessionId"    # I

    .line 92
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;-><init>(I)V

    return-object v0
.end method

.method private static getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)I
    .registers 6
    .param p1, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")I"
        }
    .end annotation

    .line 137
    .local p0, "datasetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v0, 0x0

    .line 138
    .local v0, "availableCount":I
    if-eqz p0, :cond_27

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 140
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 141
    .local v2, "data":Landroid/service/autofill/Dataset;
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 142
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 139
    .end local v2    # "data":Landroid/service/autofill/Dataset;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 147
    .end local v1    # "i":I
    :cond_27
    return v0
.end method

.method private static getDisplayPresentationType(I)I
    .registers 2
    .param p0, "uiType"    # I

    .line 246
    packed-switch p0, :pswitch_data_c

    .line 254
    const/4 v0, 0x0

    return v0

    .line 252
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 250
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 248
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method static getNoPresentationEventReason(I)I
    .registers 2
    .param p0, "commitReason"    # I

    .line 231
    packed-switch p0, :pswitch_data_c

    .line 241
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 237
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 233
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 235
    :pswitch_9
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic lambda$maybeSetAvailableCount$2(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 5
    .param p0, "datasetList"    # Ljava/util/List;
    .param p1, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 118
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)I

    move-result v0

    .line 119
    .local v0, "availableCount":I
    iput v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 120
    if-lez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iput-boolean v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    .line 121
    return-void
.end method

.method static synthetic lambda$maybeSetCountFilteredUserTyping$4(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2
    .param p0, "countFilteredUserTyping"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 152
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    .line 153
    return-void
.end method

.method static synthetic lambda$maybeSetCountNotShownImePresentationNotDrawn$5(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2
    .param p0, "countNotShownImePresentationNotDrawn"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 159
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    .line 160
    return-void
.end method

.method static synthetic lambda$maybeSetCountNotShownImeUserNotSeen$6(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2
    .param p0, "countNotShownImeUserNotSeen"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 165
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    .line 166
    return-void
.end method

.method static synthetic lambda$maybeSetCountShown$3(Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 5
    .param p0, "datasetList"    # Ljava/util/List;
    .param p1, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .param p2, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 127
    invoke-static {p0, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDatasetCountForAutofillId(Ljava/util/List;Landroid/view/autofill/AutofillId;)I

    move-result v0

    .line 128
    .local v0, "countShown":I
    iput v0, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    .line 129
    if-lez v0, :cond_b

    .line 130
    const/4 v1, 0x1

    iput v1, p2, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 132
    :cond_b
    return-void
.end method

.method static synthetic lambda$maybeSetDisplayPresentationType$7(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 3
    .param p0, "uiType"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 171
    invoke-static {p0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->getDisplayPresentationType(I)I

    move-result v0

    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 172
    return-void
.end method

.method static synthetic lambda$maybeSetNoPresentationEventReason$1(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 3
    .param p0, "reason"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 109
    iget v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    if-nez v0, :cond_6

    .line 110
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    .line 112
    :cond_6
    return-void
.end method

.method static synthetic lambda$maybeSetRequestId$0(ILcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;)V
    .registers 2
    .param p0, "requestId"    # I
    .param p1, "event"    # Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 104
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    return-void
.end method


# virtual methods
.method public logAndEndEvent()V
    .registers 13

    .line 176
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "PresentationStatsEventLogger"

    if-nez v0, :cond_10

    .line 177
    const-string v0, "Shouldn\'t be logging AutofillPresentationEventReported again for same event"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_10
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 182
    .local v0, "event":Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_94

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log AutofillPresentationEventReported: requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNoPresentationEventReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAvailableCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCountShown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCountFilteredUserTyping="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCountNotShownImePresentationNotDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCountNotShownImeUserNotSeen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDisplayPresentationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_94
    iget-boolean v1, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    if-nez v1, :cond_9f

    .line 198
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 199
    return-void

    .line 201
    :cond_9f
    const/16 v2, 0x1d5

    iget v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mRequestId:I

    iget v4, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionId:I

    iget v5, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mNoPresentationReason:I

    iget v6, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    iget v7, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountShown:I

    iget v8, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountFilteredUserTyping:I

    iget v9, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImePresentationNotDrawn:I

    iget v10, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mCountNotShownImeUserNotSeen:I

    iget v11, v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIII)V

    .line 212
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 213
    return-void
.end method

.method public maybeSetAvailableCount(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .registers 5
    .param p2, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 117
    .local p1, "datasetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 122
    return-void
.end method

.method public maybeSetCountFilteredUserTyping(I)V
    .registers 4
    .param p1, "countFilteredUserTyping"    # I

    .line 151
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 154
    return-void
.end method

.method public maybeSetCountNotShownImePresentationNotDrawn(I)V
    .registers 4
    .param p1, "countNotShownImePresentationNotDrawn"    # I

    .line 158
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 161
    return-void
.end method

.method public maybeSetCountNotShownImeUserNotSeen(I)V
    .registers 4
    .param p1, "countNotShownImeUserNotSeen"    # I

    .line 164
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 167
    return-void
.end method

.method public maybeSetCountShown(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .registers 5
    .param p2, "currentViewId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 126
    .local p1, "datasetList":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 133
    return-void
.end method

.method public maybeSetDisplayPresentationType(I)V
    .registers 4
    .param p1, "uiType"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 173
    return-void
.end method

.method public maybeSetNoPresentationEventReason(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 108
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 113
    return-void
.end method

.method public maybeSetRequestId(I)V
    .registers 4
    .param p1, "requestId"    # I

    .line 104
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 105
    return-void
.end method

.method public startNewEvent()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 97
    const-string v0, "PresentationStatsEventLogger"

    const-string v1, "Failed to start new event because already have active event."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 100
    :cond_10
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 101
    return-void
.end method
