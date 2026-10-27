.class public final Landroid/app/admin/PolicyIdentifier;
.super Ljava/lang/Object;
.source "PolicyIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PolicyIdentifier$ScreenCaptureValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist SCREEN_CAPTURE:Landroid/app/admin/PolicyIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/admin/PolicyIdentifier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCREEN_CAPTURE_ALLOWED:I = 0x2

.field public static final blacklist SCREEN_CAPTURE_BLOCKED:I = 0x1

.field private static final blacklist SCREEN_CAPTURE_KEY:Ljava/lang/String; = "screenCapture"


# instance fields
.field private final blacklist mId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 127
    new-instance v0, Landroid/app/admin/PolicyIdentifier;

    const-string/jumbo v1, "screenCapture"

    invoke-direct {v0, v1}, Landroid/app/admin/PolicyIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/app/admin/PolicyIdentifier;->SCREEN_CAPTURE:Landroid/app/admin/PolicyIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/app/admin/PolicyIdentifier;->mId:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 66
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_4
    instance-of v0, p1, Landroid/app/admin/PolicyIdentifier;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_a
    check-cast p1, Landroid/app/admin/PolicyIdentifier;

    .line 69
    iget-object v0, p0, Landroid/app/admin/PolicyIdentifier;->mId:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/admin/PolicyIdentifier;->mId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/app/admin/PolicyIdentifier;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/app/admin/PolicyIdentifier;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/app/admin/PolicyIdentifier;->mId:Ljava/lang/String;

    return-object v0
.end method
