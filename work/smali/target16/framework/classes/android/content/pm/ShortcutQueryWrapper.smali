.class public final Landroid/content/pm/ShortcutQueryWrapper;
.super Landroid/content/pm/LauncherApps$ShortcutQuery;
.source "ShortcutQueryWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Landroid/content/pm/ShortcutQueryWrapper$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutQueryWrapper$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutQueryWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Landroid/content/pm/ShortcutQueryWrapper;-><init>()V

    .line 39
    iget-wide v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mChangedSince:J

    iput-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    .line 40
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mLocusIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    .line 42
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    .line 43
    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    .line 44
    iget p1, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    iput p1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    .line 45
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11

    .line 131
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 137
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_12

    move-object v3, v4

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 138
    :goto_16
    nop

    .line 139
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_24

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    goto :goto_25

    .line 139
    :cond_24
    move-object v5, v4

    .line 143
    :goto_25
    nop

    .line 144
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3b

    .line 145
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    const-class v7, Landroid/content/LocusId;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-class v8, Landroid/content/LocusId;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_3c

    .line 144
    :cond_3b
    move-object v6, v4

    .line 148
    :goto_3c
    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_42

    move-object v0, v4

    goto :goto_4a

    .line 149
    :cond_42
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 150
    :goto_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    iput-wide v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    .line 153
    iput-object v3, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    .line 154
    iput-object v5, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    .line 155
    iput-object v6, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    .line 156
    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    .line 157
    iput p1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    .line 158
    const-class p1, Landroid/content/pm/LauncherApps$ShortcutQuery$QueryFlags;

    iget v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 162
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivity()Landroid/content/ComponentName;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getChangedSince()J
    .registers 3

    .line 48
    iget-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    return-wide v0
.end method

.method public blacklist getLocusIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getQueryFlags()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    return v0
.end method

.method public blacklist getShortcutIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 100
    const-string v0, "ShortcutQueryWrapper {  }"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 110
    nop

    .line 111
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 112
    :goto_9
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 113
    :cond_10
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 114
    :cond_17
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1e

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 115
    :cond_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    iget-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    :cond_2f
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 119
    :cond_38
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 120
    :cond_41
    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    :cond_4a
    iget p2, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void
.end method
