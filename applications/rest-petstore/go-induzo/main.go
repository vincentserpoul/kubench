package main

import (
	"context"
	"io"
	"log"
	"net/http"
	"time"

	"github.com/go-chi/chi"
	"github.com/induzo/crud"
	"github.com/induzo/crud/rest"
	"github.com/induzo/gohttperror"
	"github.com/rs/xid"
)

func main() {
	r := chi.NewRouter()

	// Subrouters:
	m := &PetAPI{}

	r.Route("/pet", func(r chi.Router) {
		r.Get("/", rest.GETListHandler(m))
		r.Post("/", rest.POSTHandler(m))
		r.Get("/{ID}", rest.GETHandler(m))
		r.Patch("/{ID}", rest.PATCHHandler(m))
		r.Put("/{ID}", rest.PUTHandler(m))
		r.Delete("/{ID}", rest.DELETEHandler(m))
	})

	srv := &http.Server{
		ReadTimeout:  10 * time.Second,
		WriteTimeout: 7200 * time.Second,
		IdleTimeout:  10 * time.Second,
		Addr:         ":8080",
		Handler:      r,
	}
	if err := srv.ListenAndServe(); err != nil {
		log.Fatalf("server error: %v", err)
	}
}

type EmptyStruct struct{}

type Pet struct {
	ID        *EmptyStruct   `json:"id"`
	Category  *EmptyStruct   `json:"category"`
	Name      string         `json:"name"`
	PhotoURLs []*EmptyStruct `json:"photo_urls"`
	Tags      *EmptyStruct   `json:"tags"`
	Status    *EmptyStruct   `json:"status"`
}

type PetAPI struct{}

func (p *PetAPI) NewEmptyEntity() interface{} {
	return &Pet{}
}

func (p *PetAPI) Create(context.Context, interface{}, io.Reader) (interface{}, error) {
	return &Pet{}, nil
}

func (p *PetAPI) Delete(context.Context, xid.ID) error {
	return nil
}

func (p *PetAPI) Get(context.Context, xid.ID) (interface{}, error) {
	return &Pet{
		Name: "Brickley",
	}, nil
}

func (p *PetAPI) GetList(context.Context, crud.ListModifiers) (interface{}, error) {
	return []*Pet{&Pet{}}, nil
}

func (p *PetAPI) Update(context.Context, xid.ID, interface{}, io.Reader) (interface{}, error) {
	return &Pet{}, nil
}

func (p *PetAPI) PartialUpdate(context.Context, xid.ID, crud.PartialUpdateData, io.Reader) error {
	return nil
}

func (p *PetAPI) MapErrorToHTTPError(error) *gohttperror.ErrResponse {
	return &gohttperror.ErrResponse{}
}
