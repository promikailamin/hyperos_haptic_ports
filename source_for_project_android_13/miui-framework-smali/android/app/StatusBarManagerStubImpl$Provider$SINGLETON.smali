.class public final Landroid/app/StatusBarManagerStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "StatusBarManagerStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManagerStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/app/StatusBarManagerStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/app/StatusBarManagerStubImpl;

    invoke-direct {v0}, Landroid/app/StatusBarManagerStubImpl;-><init>()V

    sput-object v0, Landroid/app/StatusBarManagerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/StatusBarManagerStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
