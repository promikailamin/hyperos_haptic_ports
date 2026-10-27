.class public Lcom/android/internal/widget/VerifyCredentialResponse$Builder;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mGatekeeperHAT:[B

.field private blacklist mGatekeeperPasswordHandle:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    .line 138
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v3, p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->mGatekeeperHAT:[B

    iget-wide v4, p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->mGatekeeperPasswordHandle:J

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V

    return-object v0
.end method

.method public blacklist setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->mGatekeeperHAT:[B

    .line 124
    return-object p0
.end method

.method public blacklist setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;
    .registers 3

    .line 128
    iput-wide p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->mGatekeeperPasswordHandle:J

    .line 129
    return-object p0
.end method
