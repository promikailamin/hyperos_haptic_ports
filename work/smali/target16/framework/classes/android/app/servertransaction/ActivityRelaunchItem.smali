.class public Landroid/app/servertransaction/ActivityRelaunchItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityRelaunchItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityRelaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityRelaunchItem"


# instance fields
.field private greylist-max-o mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final greylist-max-o mConfig:Landroid/util/MergedConfiguration;

.field private final greylist-max-o mConfigChanges:I

.field private final blacklist mDisplayId:I

.field private final greylist-max-o mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPreserveWindow:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/app/servertransaction/ActivityRelaunchItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityRelaunchItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityRelaunchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z",
            "Landroid/window/ActivityWindowInfo;",
            "I)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 80
    const/4 p1, 0x0

    if-eqz p2, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :cond_c
    move-object v0, p1

    :goto_d
    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    .line 81
    nop

    .line 82
    if-eqz p3, :cond_17

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_17
    iput-object p1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 83
    new-instance p1, Landroid/util/MergedConfiguration;

    invoke-direct {p1, p5}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iput-object p1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 84
    new-instance p1, Landroid/window/ActivityWindowInfo;

    invoke-direct {p1, p7}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object p1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 85
    iput p4, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    .line 86
    iput-boolean p6, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    .line 87
    iput p8, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    .line 88
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 136
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 137
    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    .line 138
    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 139
    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 140
    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    .line 144
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityRelaunchItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 159
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 160
    return v0

    .line 162
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 163
    return v2

    .line 165
    :cond_c
    check-cast p1, Landroid/app/servertransaction/ActivityRelaunchItem;

    .line 166
    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v3, p1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v3, p1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 167
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-object v3, p1, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 168
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v3, p1, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 169
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget v3, p1, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    if-ne v1, v3, :cond_49

    iget-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    if-ne v1, v3, :cond_49

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    iget p1, p1, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    if-ne v1, p1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    .line 166
    :goto_4a
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 6

    .line 103
    iget-object p2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez p2, :cond_5

    .line 105
    return-void

    .line 107
    :cond_5
    const-string p2, "activityRestart"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 108
    iget-object p2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {p1, p2, p3}, Landroid/app/ClientTransactionHandler;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 109
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 110
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 177
    nop

    .line 178
    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    add-int/2addr v0, v1

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    add-int/2addr v0, v1

    .line 185
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    add-int/2addr v0, v1

    .line 186
    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 3

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;->getActivityClientRecord(Landroid/app/ClientTransactionHandler;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 117
    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 12

    .line 93
    invoke-virtual {p1}, Landroid/app/ClientTransactionHandler;->isExecutingLocalTransaction()Z

    move-result v0

    if-nez v0, :cond_d

    .line 94
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/util/MergedConfiguration;I)V

    .line 96
    :cond_d
    invoke-virtual {p0}, Landroid/app/servertransaction/ActivityRelaunchItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v5, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget v6, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget-object v7, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-boolean v8, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iget-object v9, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/app/ClientTransactionHandler;->prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object p1

    iput-object p1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 98
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityRelaunchItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",preserveWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 126
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 127
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    iget p2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-boolean p2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    iget p2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
