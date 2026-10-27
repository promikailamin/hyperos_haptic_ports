.class public final Landroid/app/prediction/AppTarget;
.super Ljava/lang/Object;
.source "AppTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppTarget$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClassName:Ljava/lang/String;

.field private final blacklist mId:Landroid/app/prediction/AppTargetId;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRank:I

.field private final blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 315
    new-instance v0, Landroid/app/prediction/AppTarget$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTarget$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 70
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 72
    iget-object p1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 74
    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 75
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 76
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 81
    iput-object p4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 82
    iput-object p2, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 85
    iput p6, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILandroid/app/prediction/AppTarget-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/app/prediction/AppTarget;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 54
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 56
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 58
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 59
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Landroid/app/prediction/AppTargetId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 90
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 91
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_2c

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    goto :goto_3c

    .line 95
    :cond_2c
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 98
    :goto_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 100
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTarget-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 153
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

    .line 155
    :cond_14
    check-cast p1, Landroid/app/prediction/AppTarget;

    .line 156
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    iget-object v0, p1, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_2d

    :cond_1f
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2d
    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 158
    :goto_30
    iget-object v3, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v3, :cond_38

    iget-object v3, p1, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v3, :cond_4e

    :cond_38
    iget-object v3, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v3, :cond_50

    iget-object v3, p1, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 160
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_50

    :cond_4e
    move v3, v2

    goto :goto_51

    :cond_50
    move v3, v1

    .line 161
    :goto_51
    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v5, p1, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {v4, v5}, Landroid/app/prediction/AppTargetId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    if-eqz v0, :cond_7b

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iget-object v4, p1, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 164
    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-eqz v3, :cond_7b

    iget v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    iget p1, p1, Landroid/app/prediction/AppTarget;->mRank:I

    if-ne v0, p1, :cond_7b

    move v1, v2

    goto :goto_7c

    :cond_7b
    nop

    .line 161
    :goto_7c
    return v1
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Landroid/app/prediction/AppTargetId;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRank()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return v0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 171
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 172
    iget-object v1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v1, :cond_21

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_21
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/prediction/AppTarget;->mRank:I

    add-int/2addr v0, v1

    .line 176
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 186
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez p2, :cond_1c

    .line 189
    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    :cond_1c
    iget-object p2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget p2, p0, Landroid/app/prediction/AppTarget;->mRank:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return-void
.end method
