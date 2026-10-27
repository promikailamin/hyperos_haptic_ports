.class Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils$Holder;
.super Ljava/lang/Object;
.source "ResolverActivityStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static blacklist INSTANCE:Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1094
    new-instance v0, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;-><init>(Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils-IA;)V

    sput-object v0, Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityStubImpl$VideoTypeParseUtils;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
