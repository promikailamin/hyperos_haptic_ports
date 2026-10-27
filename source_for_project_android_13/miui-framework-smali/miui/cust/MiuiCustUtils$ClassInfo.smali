.class Lmiui/cust/MiuiCustUtils$ClassInfo;
.super Ljava/lang/Object;
.source "MiuiCustUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cust/MiuiCustUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassInfo"
.end annotation


# instance fields
.field blacklist mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field blacklist mCs:[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field blacklist mOrgClsName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "orgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 236
    .local p2, "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lmiui/cust/MiuiCustUtils$ClassInfo;->mOrgClsName:Ljava/lang/String;

    .line 238
    iput-object p2, p0, Lmiui/cust/MiuiCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    .line 239
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lmiui/cust/MiuiCustUtils$ClassInfo;->mCs:[Ljava/lang/reflect/Constructor;

    .line 240
    return-void
.end method
