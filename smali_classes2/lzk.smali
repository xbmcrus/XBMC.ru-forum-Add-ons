.class final Llzk;
.super Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Laqa;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "\n      UPDATE ResourceEntity\n      SET\n        uploadTransferHandle = NULL,\n        status_uploadProgressPercent = ?,\n        status_uploadState = ?\n      WHERE onDeviceId = ?\n    "

    return-object v0
.end method