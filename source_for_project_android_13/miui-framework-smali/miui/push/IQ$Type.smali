.class public Lmiui/push/IQ$Type;
.super Ljava/lang/Object;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final blacklist ERROR:Lmiui/push/IQ$Type;

.field public static final blacklist GET:Lmiui/push/IQ$Type;

.field public static final blacklist RESULT:Lmiui/push/IQ$Type;

.field public static final blacklist SET:Lmiui/push/IQ$Type;


# instance fields
.field private blacklist value:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 223
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    .line 225
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    .line 227
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    .line 229
    new-instance v0, Lmiui/push/IQ$Type;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lmiui/push/IQ$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lmiui/push/IQ$Type;->value:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public static blacklist fromString(Ljava/lang/String;)Lmiui/push/IQ$Type;
    .registers 4
    .param p0, "type"    # Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 241
    return-object v0

    .line 243
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 244
    sget-object v1, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 245
    return-object v1

    .line 246
    :cond_15
    sget-object v1, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 247
    return-object v1

    .line 248
    :cond_22
    sget-object v1, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 249
    return-object v1

    .line 250
    :cond_2f
    sget-object v1, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 251
    return-object v1

    .line 253
    :cond_3c
    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lmiui/push/IQ$Type;->value:Ljava/lang/String;

    return-object v0
.end method
