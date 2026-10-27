.class Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;
.super Ljava/lang/Object;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoTypeParseUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils$Holder;
    }
.end annotation


# static fields
.field public static final blacklist VIDEO_EXTENSIONS:[Ljava/lang/String;

.field private static final blacklist mHashVideo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 46

    .line 1079
    const-string v0, "3G2"

    const-string v1, "3GP"

    const-string v2, "3GP2"

    const-string v3, "3GPP"

    const-string v4, "3GPP2"

    const-string v5, "AVI"

    const-string v6, "AVB"

    const-string v7, "ASF"

    const-string v8, "ASX"

    const-string v9, "AVS"

    const-string v10, "BOX"

    const-string v11, "DIVX"

    const-string v12, "FLV"

    const-string v13, "F4V"

    const-string v14, "M2V"

    const-string v15, "M4V"

    const-string v16, "MKV"

    const-string v17, "MOV"

    const-string v18, "MP4"

    const-string v19, "MPG"

    const-string v20, "MPEG"

    const-string v21, "NDIVX"

    const-string v22, "RA"

    const-string v23, "RM"

    const-string v24, "RAM"

    const-string v25, "RMVB"

    const-string v26, "TS"

    const-string v27, "V8"

    const-string v28, "VOB"

    const-string v29, "WMV"

    const-string v30, "XVID"

    const-string v31, "M4A"

    const-string v32, "MJ2"

    const-string v33, "MPE"

    const-string v34, "M1V"

    const-string v35, "MP2"

    const-string v36, "MOD"

    const-string v37, "QT"

    const-string v38, "PFV"

    const-string v39, "WEBM"

    const-string v40, "DAT"

    const-string v41, "VSTREAM"

    const-string v42, "DV"

    const-string v43, "H264"

    const-string v44, "H261"

    const-string v45, "H263"

    filled-new-array/range {v0 .. v45}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;->VIDEO_EXTENSIONS:[Ljava/lang/String;

    .line 1091
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;->mHashVideo:Ljava/util/HashSet;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;
    .registers 1

    .line 1098
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils$Holder;->-$$Nest$sfgetINSTANCE()Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist shouldSystemVideoCanResolve(Landroid/app/Activity;)Z
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1102
    const-string v0, "."

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 1103
    return v1

    .line 1105
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1106
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_6c

    .line 1108
    :try_start_c
    invoke-virtual {v2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "resolveType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_20

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1110
    return v5

    .line 1112
    :cond_20
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 1113
    .local v4, "data":Landroid/net/Uri;
    if-eqz v4, :cond_67

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    goto :goto_67

    .line 1117
    :cond_31
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1118
    .local v6, "decode":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1119
    .local v7, "fileName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_66

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1120
    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "suffix":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;->mHashVideo:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_63} :catch_68

    if-eqz v8, :cond_66

    .line 1122
    return v5

    .line 1128
    .end local v0    # "suffix":Ljava/lang/String;
    .end local v3    # "resolveType":Ljava/lang/String;
    .end local v4    # "data":Landroid/net/Uri;
    .end local v6    # "decode":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_66
    goto :goto_6c

    .line 1114
    .restart local v3    # "resolveType":Ljava/lang/String;
    .restart local v4    # "data":Landroid/net/Uri;
    :cond_67
    :goto_67
    return v1

    .line 1126
    .end local v3    # "resolveType":Ljava/lang/String;
    .end local v4    # "data":Landroid/net/Uri;
    :catch_68
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1130
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    return v1
.end method
