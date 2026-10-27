.class public Landroid/app/ActivityOptions$SceneTransitionInfo;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneTransitionInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExitCoordinatorIndex:I

.field private blacklist mIsReturning:Z

.field private blacklist mResultCode:I

.field private blacklist mResultData:Landroid/content/Intent;

.field private blacklist mResultReceiver:Landroid/os/ResultReceiver;

.field private blacklist mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2994
    new-instance v0, Landroid/app/ActivityOptions$SceneTransitionInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2983
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2986
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    .line 2987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    .line 2988
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    .line 2989
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2990
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 2991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    .line 2992
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3008
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExitCoordinatorKey()I
    .registers 2

    .line 3069
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    return v0
.end method

.method public blacklist getResultCode()I
    .registers 2

    .line 3034
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    return v0
.end method

.method public blacklist getResultData()Landroid/content/Intent;
    .registers 2

    .line 3043
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .line 3061
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public blacklist getSharedElementNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3052
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method blacklist isCrossTask()Z
    .registers 2

    .line 3073
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isReturning()Z
    .registers 2

    .line 3026
    iget-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    return v0
.end method

.method public blacklist setExitCoordinatorKey(I)V
    .registers 2

    .line 3065
    iput p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    .line 3066
    return-void
.end method

.method public blacklist setResultCode(I)V
    .registers 2

    .line 3030
    iput p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    .line 3031
    return-void
.end method

.method public blacklist setResultData(Landroid/content/Intent;)V
    .registers 2

    .line 3038
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    .line 3039
    return-void
.end method

.method public blacklist setResultReceiver(Landroid/os/ResultReceiver;)V
    .registers 2

    .line 3056
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 3057
    return-void
.end method

.method public blacklist setReturning(Z)V
    .registers 2

    .line 3022
    iput-boolean p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    .line 3023
    return-void
.end method

.method public blacklist setSharedElementNames(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3047
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    .line 3048
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneTransitionInfo, mIsReturning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSharedElementNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransitionReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExitCoordinatorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 3013
    iget-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3014
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3016
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3017
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3018
    iget p2, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3019
    return-void
.end method
