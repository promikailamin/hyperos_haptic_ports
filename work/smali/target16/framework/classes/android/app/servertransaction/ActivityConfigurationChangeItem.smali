.class public Landroid/app/servertransaction/ActivityConfigurationChangeItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityConfigurationChangeItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final greylist-max-o mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mDisplayId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;I)V
    .registers 5

    .line 54
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 55
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 56
    new-instance p1, Landroid/window/ActivityWindowInfo;

    invoke-direct {p1, p3}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object p1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 57
    iput p4, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

    .line 58
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 92
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 93
    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityConfigurationChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 110
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 111
    return v0

    .line 113
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 114
    return v2

    .line 116
    :cond_c
    check-cast p1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 117
    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v3, p1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 118
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

    iget p1, p1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

    if-ne v1, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 117
    :goto_2a
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 8

    .line 72
    const-string p3, "activityConfigChanged"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 73
    iget-object p3, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v2, -0x1

    iget-object v3, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V

    .line 75
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 124
    nop

    .line 125
    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

    add-int/2addr v0, v1

    .line 129
    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 4

    .line 62
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 66
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityConfigurationChange{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

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

    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    iget p2, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
