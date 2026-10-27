.class public Lmiui/contentcatcher/sdk/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/Content;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist JOB:Ljava/lang/String;

.field public static whitelist TARGET:Ljava/lang/String;

.field public static whitelist TOKEN_KEY:Ljava/lang/String;


# instance fields
.field public whitelist mCatchType:I

.field public whitelist mCatcherToken:Ljava/lang/String;

.field public whitelist mFavIntent:Landroid/content/Intent;

.field public whitelist mInjectorToken:Lmiui/contentcatcher/sdk/Token;

.field public whitelist mJob:Ljava/lang/String;

.field public whitelist mResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mTarget:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-string v0, "target"

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->TARGET:Ljava/lang/String;

    .line 15
    const-string v0, "job"

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->JOB:Ljava/lang/String;

    .line 16
    const-string v0, "token"

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->TOKEN_KEY:Ljava/lang/String;

    .line 104
    new-instance v0, Lmiui/contentcatcher/sdk/Content$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/Content$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;)V
    .registers 6
    .param p1, "catchType"    # I
    .param p2, "catcherToken"    # Ljava/lang/String;
    .param p3, "injectorToken"    # Lmiui/contentcatcher/sdk/Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lmiui/contentcatcher/sdk/Token;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 21
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 22
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    .line 28
    iput p1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 29
    iput-object p2, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 31
    iput-object p4, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "favIntent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 21
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 22
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 36
    sget-object v0, Lmiui/contentcatcher/sdk/Content;->TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 37
    .local v0, "token":Landroid/os/Parcelable;
    if-eqz v0, :cond_28

    instance-of v1, v0, Lmiui/contentcatcher/sdk/Token;

    if-eqz v1, :cond_28

    .line 38
    move-object v1, v0

    check-cast v1, Lmiui/contentcatcher/sdk/Token;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 40
    :cond_28
    sget-object v1, Lmiui/contentcatcher/sdk/Content;->TARGET:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    .line 41
    sget-object v1, Lmiui/contentcatcher/sdk/Content;->JOB:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 21
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 22
    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/sdk/Token;

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 119
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/Content-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/Content;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInjectorToken()Lmiui/contentcatcher/sdk/Token;
    .registers 2

    .line 132
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    return-object v0
.end method

.method public whitelist getTargetTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v0, "buff":Ljava/lang/StringBuffer;
    const-string v1, "Content{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    const-string v2, "; "

    if-eqz v1, :cond_2c

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFavIntent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_2c
    iget v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    if-eqz v1, :cond_4c

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCatchType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_4c
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCatcherToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_70
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    if-eqz v1, :cond_ae

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInjectorToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v3}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 58
    invoke-virtual {v4}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v3}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_ae
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    if-eqz v1, :cond_10c

    .line 61
    const-string v1, "mResultMap[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, ""

    .line 64
    .local v4, "resultValue":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 66
    .local v5, "resultObj":Ljava/lang/Object;
    :try_start_d3
    instance-of v6, v5, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_db

    .line 67
    const-string v6, "bitmap"

    move-object v4, v6

    goto :goto_e0

    .line 69
    :cond_db
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_df} :catch_e1

    move-object v4, v6

    .line 73
    :goto_e0
    goto :goto_e2

    .line 71
    :catch_e1
    move-exception v6

    .line 74
    :goto_e2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "resultValue":Ljava/lang/String;
    .end local v5    # "resultObj":Ljava/lang/Object;
    goto :goto_c1

    .line 76
    :cond_107
    const-string v1, " ];  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_10c
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_130

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTarget="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_130
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_154

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mJob="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_154
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 99
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mJob:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return-void
.end method
