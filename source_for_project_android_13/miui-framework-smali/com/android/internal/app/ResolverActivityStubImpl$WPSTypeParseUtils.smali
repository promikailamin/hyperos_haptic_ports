.class Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;
.super Ljava/lang/Object;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WPSTypeParseUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils$Holder;
    }
.end annotation


# static fields
.field public static final blacklist DOC_SUFFIX:[Ljava/lang/String;

.field private static final blacklist mDocTypes:Ljava/util/HashSet;
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
    .registers 7

    .line 1171
    const-string v0, "DOC"

    const-string v1, "DOCX"

    const-string v2, "XLS"

    const-string v3, "XLSX"

    const-string v4, "PPT"

    const-string v5, "PPTX"

    const-string v6, "PDF"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;->DOC_SUFFIX:[Ljava/lang/String;

    .line 1181
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;->mDocTypes:Ljava/util/HashSet;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;
    .registers 1

    .line 1188
    invoke-static {}, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils$Holder;->-$$Nest$sfgetINSTANCE()Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist isDocTypeResolved(Landroid/app/Activity;)Z
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1192
    const-string v0, "."

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 1193
    return v1

    .line 1195
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1196
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_4e

    .line 1198
    :try_start_c
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1199
    .local v3, "data":Landroid/net/Uri;
    if-nez v3, :cond_13

    .line 1200
    return v1

    .line 1202
    :cond_13
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1203
    .local v4, "decode":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1204
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_49

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1205
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "suffix":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/app/ResolverActivityStubImpl$WPSTypeParseUtils;->mDocTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_46} :catch_4a

    if-eqz v7, :cond_49

    .line 1207
    return v6

    .line 1212
    .end local v0    # "suffix":Ljava/lang/String;
    .end local v3    # "data":Landroid/net/Uri;
    .end local v4    # "decode":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_49
    goto :goto_4e

    .line 1210
    :catch_4a
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1214
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    return v1
.end method
