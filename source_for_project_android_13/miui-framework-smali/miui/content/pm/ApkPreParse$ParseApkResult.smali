.class public final Lmiui/content/pm/ApkPreParse$ParseApkResult;
.super Ljava/lang/Object;
.source "ApkPreParse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/ApkPreParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseApkResult"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/content/pm/ApkPreParse$ParseApkResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApkLite:Landroid/content/pm/parsing/ApkLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Lmiui/content/pm/ApkPreParse$ParseApkResult$1;

    invoke-direct {v0}, Lmiui/content/pm/ApkPreParse$ParseApkResult$1;-><init>()V

    sput-object v0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/parsing/ApkLite;)V
    .registers 2
    .param p1, "apklite"    # Landroid/content/pm/parsing/ApkLite;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 37
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v15, Landroid/content/pm/parsing/ApkLite;

    move-object v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const-class v13, Landroid/content/pm/VerifierInfo;

    .line 112
    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-class v14, Landroid/content/pm/VerifierInfo;

    .line 111
    invoke-virtual {v0, v13, v14}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/VerifierInfo;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-class v14, Landroid/content/pm/SigningDetails;

    .line 114
    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/pm/SigningDetails;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    move-object v0, v15

    move/from16 v15, v16

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 120
    invoke-direct/range {p0 .. p1}, Lmiui/content/pm/ApkPreParse$ParseApkResult;->readArrayListToSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v31

    invoke-direct/range {p0 .. p1}, Lmiui/content/pm/ApkPreParse$ParseApkResult;->readArrayListToSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v32

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v34

    invoke-direct/range {v1 .. v34}, Landroid/content/pm/parsing/ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZ)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    .line 122
    return-void
.end method

.method private blacklist readArrayListToSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    .line 127
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 129
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getApkLite()Landroid/content/pm/parsing/ApkLite;
    .registers 2

    .line 195
    iget-object v0, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget-object v0, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    .line 153
    .local v0, "requiredSplitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v1}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v1

    .line 155
    .local v1, "splitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isFeatureSplit()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getConfigForSplit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getUsesSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getVersionCodeMajor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 167
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isCoreApp()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 169
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isDebuggable()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isProfileableByShell()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 171
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isMultiArch()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 172
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isUse32bitAbi()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isUseEmbeddedDex()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isExtractNativeLibs()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isIsolatedSplits()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isOverlayIsStatic()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getOverlayPriority()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getMinSdkVersion()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getRollbackDataPolicy()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v2, 0x0

    if-nez v0, :cond_116

    .line 185
    move-object v3, v2

    goto :goto_121

    :cond_116
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v4}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    :goto_121
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 186
    if-nez v1, :cond_127

    .line 187
    goto :goto_132

    :cond_127
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    :goto_132
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 188
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    iget-object v2, p0, Lmiui/content/pm/ApkPreParse$ParseApkResult;->mApkLite:Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isIsSdkLibrary()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    return-void
.end method
