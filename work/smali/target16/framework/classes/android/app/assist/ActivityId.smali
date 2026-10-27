.class public final Landroid/app/assist/ActivityId;
.super Ljava/lang/Object;
.source "ActivityId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/ActivityId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityId:Landroid/os/IBinder;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/app/assist/ActivityId$1;

    invoke-direct {v0}, Landroid/app/assist/ActivityId$1;-><init>()V

    sput-object v0, Landroid/app/assist/ActivityId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    .line 61
    iput-object p2, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 139
    :cond_12
    check-cast p1, Landroid/app/assist/ActivityId;

    .line 140
    iget v2, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    iget v3, p1, Landroid/app/assist/ActivityId;->mTaskId:I

    if-eq v2, v3, :cond_1b

    .line 141
    return v1

    .line 143
    :cond_1b
    iget-object v2, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-eqz v2, :cond_28

    .line 144
    iget-object v0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2e

    .line 145
    :cond_28
    iget-object p1, p1, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    .line 143
    :goto_2e
    return v0

    .line 137
    :cond_2f
    :goto_2f
    return v1
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    return v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 150
    iget v0, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    .line 152
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityId { taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 105
    iget p2, p0, Landroid/app/assist/ActivityId;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object p2, p0, Landroid/app/assist/ActivityId;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 107
    return-void
.end method
