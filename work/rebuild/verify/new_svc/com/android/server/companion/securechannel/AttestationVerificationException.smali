.class public Lcom/android/server/companion/securechannel/AttestationVerificationException;
.super Lcom/android/server/companion/securechannel/SecureChannelException;
.source "AttestationVerificationException.java"


# instance fields
.field private final flags:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    .line 29
    iput p2, p0, Lcom/android/server/companion/securechannel/AttestationVerificationException;->flags:I

    return-void
.end method


# virtual methods
.method public getFlags()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/android/server/companion/securechannel/AttestationVerificationException;->flags:I

    return p0
.end method
