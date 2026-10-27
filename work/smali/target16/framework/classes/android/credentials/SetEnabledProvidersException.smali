.class public Landroid/credentials/SetEnabledProvidersException;
.super Ljava/lang/Exception;
.source "SetEnabledProvidersException.java"


# instance fields
.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/credentials/SetEnabledProvidersException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/credentials/SetEnabledProvidersException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 58
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    nop

    .line 60
    const-string/jumbo p2, "type must not be empty"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/credentials/SetEnabledProvidersException;->mType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/credentials/SetEnabledProvidersException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/credentials/SetEnabledProvidersException;->mType:Ljava/lang/String;

    return-object v0
.end method
