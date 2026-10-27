.class public final Landroid/app/prediction/AppTargetEvent;
.super Ljava/lang/Object;
.source "AppTargetEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppTargetEvent$Builder;,
        Landroid/app/prediction/AppTargetEvent$ActionType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DISMISS:I = 0x2

.field public static final whitelist ACTION_LAUNCH:I = 0x1

.field public static final whitelist ACTION_PIN:I = 0x3

.field public static final whitelist ACTION_UNDISMISS:I = 0x5

.field public static final whitelist ACTION_UNPIN:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppTargetEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mLocation:Ljava/lang/String;

.field private final blacklist mTarget:Landroid/app/prediction/AppTarget;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/app/prediction/AppTargetEvent$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTargetEvent$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;I)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    .line 76
    iput-object p2, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    .line 77
    iput p3, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;ILandroid/app/prediction/AppTargetEvent-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    const-class v1, Landroid/app/prediction/AppTarget;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTarget;

    iput-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTargetEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 113
    :cond_14
    check-cast p1, Landroid/app/prediction/AppTargetEvent;

    .line 114
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    iget-object v2, p1, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    invoke-virtual {v0, v2}, Landroid/app/prediction/AppTarget;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    iget p1, p1, Landroid/app/prediction/AppTargetEvent;->mAction:I

    if-ne v0, p1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    .line 114
    :goto_33
    return v1
.end method

.method public whitelist getAction()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    return v0
.end method

.method public whitelist getLaunchLocation()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTarget()Landroid/app/prediction/AppTarget;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 121
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    iget-object v1, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    add-int/2addr v0, v1

    .line 123
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 133
    iget-object p2, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    iget-object p2, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget p2, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
