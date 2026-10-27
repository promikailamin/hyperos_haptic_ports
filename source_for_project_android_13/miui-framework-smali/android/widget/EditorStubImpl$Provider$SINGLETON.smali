.class public final Landroid/widget/EditorStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "EditorStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditorStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/widget/EditorStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/widget/EditorStubImpl;

    invoke-direct {v0}, Landroid/widget/EditorStubImpl;-><init>()V

    sput-object v0, Landroid/widget/EditorStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/EditorStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
